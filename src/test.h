#ifndef TEST_H_
#define TEST_H_

#ifdef _WIN32
#define DLLEXPORT __declspec(dllexport)
#else
#define DLLEXPORT extern
#endif

#endif

DLLEXPORT void ptr_to_strs (char ***ptr);
