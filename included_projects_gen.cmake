# Generated file, do not edit.
# Compiles and links sibling projects declared via <folders> in project.xml.

set(LVGL_COMPONENT_LIB_NAME "lib-included-my_subjects")
add_subdirectory("${CMAKE_CURRENT_LIST_DIR}/my_subjects" "${CMAKE_CURRENT_BINARY_DIR}/included/lib-included-my_subjects")
unset(LVGL_COMPONENT_LIB_NAME)

set(LIBS)
if(TARGET lvrt)
    list(APPEND LIBS lvrt)
endif()
if(TARGET lvgl)
    list(APPEND LIBS lvgl)
endif()

if(LIBS)
    target_link_libraries(lib-included-my_subjects PRIVATE ${LIBS})
endif()

list(APPEND LV_EDITOR_COMPONENT_LIB_LIST lib-included-my_subjects)
list(APPEND LV_EDITOR_COMPONENT_INCLUDE_DIRS "${CMAKE_CURRENT_LIST_DIR}/my_subjects")
